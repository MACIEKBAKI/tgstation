import { Fragment } from 'inferno';
import { useBackend } from '../backend';
import { Box, Button, Flex, LabeledList, NoticeBox, ProgressBar, Section,Dropdown} from '../components';
import { Window } from '../layouts';
import { InterfaceLockNoticeBox } from './common/InterfaceLockNoticeBox';

export const Jukebox = (props, context) => {
  const { act, data } = useBackend(context);
  const { 
    allowed,
    active,
    selection,
    track_list,
    selected_track,
    selected_track_alt
  } = data 
  return (
    <Window
      width={300}
      height={300}>
        <Window.Content>
          <Box textAlign="center">
              Current Song
              <Dropdown
              options = {track_list}
              selected = {selected_track}
              width="100%"
              onSelected={value => act('select_dropdown')}
              />
              <Button
              icon={active ? 'exclamation-triangle' : 'minus-circle'}
              content={active ? 'Playing' : 'Stopped'}
              color={active ? "good" : "bad"}
              disabled={!allowed}
              onClick={() => act('toggle')} />
          </Box>
        </Window.Content>
    </Window>
  );
};
